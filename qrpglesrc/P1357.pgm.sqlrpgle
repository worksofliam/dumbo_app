**free

ctl-opt dftactgrp(*no);

dcl-pi P1357;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1096.rpgleinc'
/copy 'qrpgleref/P1186.rpgleinc'
/copy 'qrpgleref/P31.rpgleinc'

dcl-ds theTable extname('T89') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T89 LIMIT 1;

theCharVar = 'Hello from P1357';
dsply theCharVar;
P1096();
P1186();
P31();
return;