**free

ctl-opt dftactgrp(*no);

dcl-pi P310;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P231.rpgleinc'
/copy 'qrpgleref/P160.rpgleinc'
/copy 'qrpgleref/P176.rpgleinc'

dcl-ds T1203 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1203 FROM T1203 LIMIT 1;

theCharVar = 'Hello from P310';
dsply theCharVar;
P231();
P160();
P176();
return;