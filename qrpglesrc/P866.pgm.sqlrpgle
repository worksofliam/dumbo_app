**free

ctl-opt dftactgrp(*no);

dcl-pi P866;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P48.rpgleinc'
/copy 'qrpgleref/P350.rpgleinc'
/copy 'qrpgleref/P232.rpgleinc'

dcl-ds T326 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T326 FROM T326 LIMIT 1;

theCharVar = 'Hello from P866';
dsply theCharVar;
callp localProc();
P48();
P350();
P232();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P866 in the procedure';
end-proc;