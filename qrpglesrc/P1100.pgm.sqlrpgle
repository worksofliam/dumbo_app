**free

ctl-opt dftactgrp(*no);

dcl-pi P1100;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P105.rpgleinc'
/copy 'qrpgleref/P575.rpgleinc'
/copy 'qrpgleref/P1061.rpgleinc'

dcl-ds theTable extname('T453') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T453 LIMIT 1;

theCharVar = 'Hello from P1100';
dsply theCharVar;
P105();
P575();
P1061();
return;