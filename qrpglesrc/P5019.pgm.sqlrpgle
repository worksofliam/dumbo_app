**free

ctl-opt dftactgrp(*no);

dcl-pi P5019;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2536.rpgleinc'
/copy 'qrpgleref/P2786.rpgleinc'
/copy 'qrpgleref/P1096.rpgleinc'

dcl-ds theTable extname('T1582') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1582 LIMIT 1;

theCharVar = 'Hello from P5019';
dsply theCharVar;
P2536();
P2786();
P1096();
return;