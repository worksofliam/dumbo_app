**free

ctl-opt dftactgrp(*no);

dcl-pi P1259;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P236.rpgleinc'
/copy 'qrpgleref/P115.rpgleinc'
/copy 'qrpgleref/P550.rpgleinc'

dcl-ds theTable extname('T53') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T53 LIMIT 1;

theCharVar = 'Hello from P1259';
dsply theCharVar;
P236();
P115();
P550();
return;