**free

ctl-opt dftactgrp(*no);

dcl-pi P3420;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P103.rpgleinc'
/copy 'qrpgleref/P2840.rpgleinc'
/copy 'qrpgleref/P2150.rpgleinc'

dcl-ds T1831 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1831 FROM T1831 LIMIT 1;

theCharVar = 'Hello from P3420';
dsply theCharVar;
callp localProc();
P103();
P2840();
P2150();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3420 in the procedure';
end-proc;