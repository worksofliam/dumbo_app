**free

ctl-opt dftactgrp(*no);

dcl-pi P862;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P182.rpgleinc'
/copy 'qrpgleref/P223.rpgleinc'
/copy 'qrpgleref/P752.rpgleinc'

dcl-ds T195 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T195 FROM T195 LIMIT 1;

theCharVar = 'Hello from P862';
dsply theCharVar;
P182();
P223();
P752();
return;