**free

ctl-opt dftactgrp(*no);

dcl-pi P464;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P105.rpgleinc'
/copy 'qrpgleref/P373.rpgleinc'
/copy 'qrpgleref/P199.rpgleinc'

dcl-ds theTable extname('T30') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T30 LIMIT 1;

theCharVar = 'Hello from P464';
dsply theCharVar;
P105();
P373();
P199();
return;