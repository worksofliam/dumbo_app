**free

ctl-opt dftactgrp(*no);

dcl-pi P3274;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P3008.rpgleinc'
/copy 'qrpgleref/P616.rpgleinc'
/copy 'qrpgleref/P2610.rpgleinc'

dcl-ds theTable extname('T59') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T59 LIMIT 1;

theCharVar = 'Hello from P3274';
dsply theCharVar;
P3008();
P616();
P2610();
return;