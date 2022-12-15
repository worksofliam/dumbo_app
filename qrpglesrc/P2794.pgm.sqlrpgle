**free

ctl-opt dftactgrp(*no);

dcl-pi P2794;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2019.rpgleinc'
/copy 'qrpgleref/P2215.rpgleinc'
/copy 'qrpgleref/P1945.rpgleinc'

dcl-ds theTable extname('T514') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T514 LIMIT 1;

theCharVar = 'Hello from P2794';
dsply theCharVar;
P2019();
P2215();
P1945();
return;