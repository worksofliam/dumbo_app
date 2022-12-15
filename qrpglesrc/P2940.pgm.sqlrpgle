**free

ctl-opt dftactgrp(*no);

dcl-pi P2940;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1140.rpgleinc'
/copy 'qrpgleref/P65.rpgleinc'
/copy 'qrpgleref/P2018.rpgleinc'

dcl-ds theTable extname('T741') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T741 LIMIT 1;

theCharVar = 'Hello from P2940';
dsply theCharVar;
P1140();
P65();
P2018();
return;