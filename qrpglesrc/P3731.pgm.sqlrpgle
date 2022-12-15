**free

ctl-opt dftactgrp(*no);

dcl-pi P3731;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P981.rpgleinc'
/copy 'qrpgleref/P1725.rpgleinc'
/copy 'qrpgleref/P737.rpgleinc'

dcl-ds T839 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T839 FROM T839 LIMIT 1;

theCharVar = 'Hello from P3731';
dsply theCharVar;
P981();
P1725();
P737();
return;