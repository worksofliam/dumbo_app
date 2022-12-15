**free

ctl-opt dftactgrp(*no);

dcl-pi P1158;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P638.rpgleinc'
/copy 'qrpgleref/P59.rpgleinc'
/copy 'qrpgleref/P308.rpgleinc'

dcl-ds T447 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T447 FROM T447 LIMIT 1;

theCharVar = 'Hello from P1158';
dsply theCharVar;
P638();
P59();
P308();
return;