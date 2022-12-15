**free

ctl-opt dftactgrp(*no);

dcl-pi P26;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P11.rpgleinc'
/copy 'qrpgleref/P17.rpgleinc'

dcl-ds T33 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T33 FROM T33 LIMIT 1;

theCharVar = 'Hello from P26';
dsply theCharVar;
P11();
P17();
return;