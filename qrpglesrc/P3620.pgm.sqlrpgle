**free

ctl-opt dftactgrp(*no);

dcl-pi P3620;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2931.rpgleinc'
/copy 'qrpgleref/P1896.rpgleinc'
/copy 'qrpgleref/P631.rpgleinc'

dcl-ds T449 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T449 FROM T449 LIMIT 1;

theCharVar = 'Hello from P3620';
dsply theCharVar;
callp localProc();
P2931();
P1896();
P631();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3620 in the procedure';
end-proc;