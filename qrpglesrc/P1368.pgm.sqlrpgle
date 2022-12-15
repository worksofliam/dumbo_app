**free

ctl-opt dftactgrp(*no);

dcl-pi P1368;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P503.rpgleinc'
/copy 'qrpgleref/P728.rpgleinc'
/copy 'qrpgleref/P645.rpgleinc'

dcl-ds T164 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T164 FROM T164 LIMIT 1;

theCharVar = 'Hello from P1368';
dsply theCharVar;
P503();
P728();
P645();
return;