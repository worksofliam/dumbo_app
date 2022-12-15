**free

ctl-opt dftactgrp(*no);

dcl-pi P1716;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P337.rpgleinc'
/copy 'qrpgleref/P306.rpgleinc'
/copy 'qrpgleref/P1685.rpgleinc'

dcl-ds theTable extname('T742') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T742 LIMIT 1;

theCharVar = 'Hello from P1716';
dsply theCharVar;
P337();
P306();
P1685();
return;