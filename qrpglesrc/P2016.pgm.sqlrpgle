**free

ctl-opt dftactgrp(*no);

dcl-pi P2016;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P949.rpgleinc'
/copy 'qrpgleref/P686.rpgleinc'
/copy 'qrpgleref/P541.rpgleinc'

dcl-ds T386 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T386 FROM T386 LIMIT 1;

theCharVar = 'Hello from P2016';
dsply theCharVar;
P949();
P686();
P541();
return;