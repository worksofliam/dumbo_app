**free

ctl-opt dftactgrp(*no);

dcl-pi P1036;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P558.rpgleinc'
/copy 'qrpgleref/P668.rpgleinc'
/copy 'qrpgleref/P186.rpgleinc'

dcl-ds theTable extname('T100') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T100 LIMIT 1;

theCharVar = 'Hello from P1036';
dsply theCharVar;
P558();
P668();
P186();
return;