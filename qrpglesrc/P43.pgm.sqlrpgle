**free

ctl-opt dftactgrp(*no);

dcl-pi P43;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P33.rpgleinc'
/copy 'qrpgleref/P21.rpgleinc'
/copy 'qrpgleref/P16.rpgleinc'

dcl-ds T951 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T951 FROM T951 LIMIT 1;

theCharVar = 'Hello from P43';
dsply theCharVar;
callp localProc();
P33();
P21();
P16();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P43 in the procedure';
end-proc;