**free

ctl-opt dftactgrp(*no);

dcl-pi P3492;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P853.rpgleinc'
/copy 'qrpgleref/P3030.rpgleinc'
/copy 'qrpgleref/P2449.rpgleinc'

dcl-ds theTable extname('T378') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T378 LIMIT 1;

theCharVar = 'Hello from P3492';
dsply theCharVar;
callp localProc();
P853();
P3030();
P2449();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3492 in the procedure';
end-proc;