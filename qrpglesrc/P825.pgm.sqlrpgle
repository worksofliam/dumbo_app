**free

ctl-opt dftactgrp(*no);

dcl-pi P825;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P503.rpgleinc'
/copy 'qrpgleref/P706.rpgleinc'
/copy 'qrpgleref/P368.rpgleinc'

dcl-ds T89 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T89 FROM T89 LIMIT 1;

theCharVar = 'Hello from P825';
dsply theCharVar;
P503();
P706();
P368();
return;