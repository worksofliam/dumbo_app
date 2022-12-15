**free

ctl-opt dftactgrp(*no);

dcl-pi P3291;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1872.rpgleinc'
/copy 'qrpgleref/P2622.rpgleinc'
/copy 'qrpgleref/P744.rpgleinc'

dcl-ds theTable extname('T653') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T653 LIMIT 1;

theCharVar = 'Hello from P3291';
dsply theCharVar;
callp localProc();
P1872();
P2622();
P744();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3291 in the procedure';
end-proc;