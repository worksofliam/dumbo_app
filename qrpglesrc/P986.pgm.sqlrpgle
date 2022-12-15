**free

ctl-opt dftactgrp(*no);

dcl-pi P986;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P469.rpgleinc'
/copy 'qrpgleref/P440.rpgleinc'
/copy 'qrpgleref/P853.rpgleinc'

dcl-ds theTable extname('T937') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T937 LIMIT 1;

theCharVar = 'Hello from P986';
dsply theCharVar;
P469();
P440();
P853();
return;