**free

ctl-opt dftactgrp(*no);

dcl-pi P4885;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1010.rpgleinc'
/copy 'qrpgleref/P3329.rpgleinc'
/copy 'qrpgleref/P4286.rpgleinc'

dcl-ds theTable extname('T1282') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1282 LIMIT 1;

theCharVar = 'Hello from P4885';
dsply theCharVar;
P1010();
P3329();
P4286();
return;