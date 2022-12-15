**free

ctl-opt dftactgrp(*no);

dcl-pi P1136;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P847.rpgleinc'
/copy 'qrpgleref/P355.rpgleinc'
/copy 'qrpgleref/P806.rpgleinc'

dcl-ds T38 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T38 FROM T38 LIMIT 1;

theCharVar = 'Hello from P1136';
dsply theCharVar;
callp localProc();
P847();
P355();
P806();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1136 in the procedure';
end-proc;