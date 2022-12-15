**free

ctl-opt dftactgrp(*no);

dcl-pi P1791;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P686.rpgleinc'
/copy 'qrpgleref/P25.rpgleinc'
/copy 'qrpgleref/P914.rpgleinc'

dcl-ds T895 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T895 FROM T895 LIMIT 1;

theCharVar = 'Hello from P1791';
dsply theCharVar;
P686();
P25();
P914();
return;