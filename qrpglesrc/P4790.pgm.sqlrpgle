**free

ctl-opt dftactgrp(*no);

dcl-pi P4790;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2186.rpgleinc'
/copy 'qrpgleref/P2754.rpgleinc'
/copy 'qrpgleref/P3109.rpgleinc'

dcl-ds theTable extname('T117') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T117 LIMIT 1;

theCharVar = 'Hello from P4790';
dsply theCharVar;
P2186();
P2754();
P3109();
return;