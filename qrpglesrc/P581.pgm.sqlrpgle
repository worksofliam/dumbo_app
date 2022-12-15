**free

ctl-opt dftactgrp(*no);

dcl-pi P581;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P38.rpgleinc'
/copy 'qrpgleref/P552.rpgleinc'
/copy 'qrpgleref/P451.rpgleinc'

dcl-ds T599 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T599 FROM T599 LIMIT 1;

theCharVar = 'Hello from P581';
dsply theCharVar;
callp localProc();
P38();
P552();
P451();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P581 in the procedure';
end-proc;