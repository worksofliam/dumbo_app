**free

ctl-opt dftactgrp(*no);

dcl-pi P93;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P18.rpgleinc'
/copy 'qrpgleref/P71.rpgleinc'
/copy 'qrpgleref/P21.rpgleinc'

dcl-ds T65 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T65 FROM T65 LIMIT 1;

theCharVar = 'Hello from P93';
dsply theCharVar;
P18();
P71();
P21();
return;