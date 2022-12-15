**free

ctl-opt dftactgrp(*no);

dcl-pi P3721;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1498.rpgleinc'
/copy 'qrpgleref/P1694.rpgleinc'
/copy 'qrpgleref/P1068.rpgleinc'

dcl-ds theTable extname('T1493') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1493 LIMIT 1;

theCharVar = 'Hello from P3721';
dsply theCharVar;
callp localProc();
P1498();
P1694();
P1068();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3721 in the procedure';
end-proc;