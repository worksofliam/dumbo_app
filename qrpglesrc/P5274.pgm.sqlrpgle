**free

ctl-opt dftactgrp(*no);

dcl-pi P5274;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2246.rpgleinc'
/copy 'qrpgleref/P1161.rpgleinc'
/copy 'qrpgleref/P3960.rpgleinc'

dcl-ds theTable extname('T1334') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1334 LIMIT 1;

theCharVar = 'Hello from P5274';
dsply theCharVar;
callp localProc();
P2246();
P1161();
P3960();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P5274 in the procedure';
end-proc;