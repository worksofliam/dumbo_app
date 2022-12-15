**free

ctl-opt dftactgrp(*no);

dcl-pi P691;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P350.rpgleinc'
/copy 'qrpgleref/P547.rpgleinc'
/copy 'qrpgleref/P38.rpgleinc'

dcl-ds T199 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T199 FROM T199 LIMIT 1;

theCharVar = 'Hello from P691';
dsply theCharVar;
callp localProc();
P350();
P547();
P38();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P691 in the procedure';
end-proc;