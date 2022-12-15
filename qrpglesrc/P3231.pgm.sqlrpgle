**free

ctl-opt dftactgrp(*no);

dcl-pi P3231;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1708.rpgleinc'
/copy 'qrpgleref/P1219.rpgleinc'
/copy 'qrpgleref/P1925.rpgleinc'

dcl-ds T906 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T906 FROM T906 LIMIT 1;

theCharVar = 'Hello from P3231';
dsply theCharVar;
P1708();
P1219();
P1925();
return;