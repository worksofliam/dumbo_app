**free

ctl-opt dftactgrp(*no);

dcl-pi P1685;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P930.rpgleinc'
/copy 'qrpgleref/P1651.rpgleinc'
/copy 'qrpgleref/P1281.rpgleinc'

dcl-ds T212 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T212 FROM T212 LIMIT 1;

theCharVar = 'Hello from P1685';
dsply theCharVar;
callp localProc();
P930();
P1651();
P1281();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1685 in the procedure';
end-proc;