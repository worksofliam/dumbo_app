**free

ctl-opt dftactgrp(*no);

dcl-pi P320;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P45.rpgleinc'
/copy 'qrpgleref/P308.rpgleinc'
/copy 'qrpgleref/P106.rpgleinc'

dcl-ds theTable extname('T117') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T117 LIMIT 1;

theCharVar = 'Hello from P320';
dsply theCharVar;
P45();
P308();
P106();
return;