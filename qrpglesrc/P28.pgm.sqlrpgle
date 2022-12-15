**free

ctl-opt dftactgrp(*no);

dcl-pi P28;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P15.rpgleinc'
/copy 'qrpgleref/P19.rpgleinc'
/copy 'qrpgleref/P14.rpgleinc'

dcl-ds theTable extname('T163') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T163 LIMIT 1;

theCharVar = 'Hello from P28';
dsply theCharVar;
P15();
P19();
P14();
return;