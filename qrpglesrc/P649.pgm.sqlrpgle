**free

ctl-opt dftactgrp(*no);

dcl-pi P649;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P469.rpgleinc'
/copy 'qrpgleref/P461.rpgleinc'
/copy 'qrpgleref/P397.rpgleinc'

dcl-ds theTable extname('T537') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T537 LIMIT 1;

theCharVar = 'Hello from P649';
dsply theCharVar;
P469();
P461();
P397();
return;