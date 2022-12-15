**free

ctl-opt dftactgrp(*no);

dcl-pi P406;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P388.rpgleinc'
/copy 'qrpgleref/P1.rpgleinc'
/copy 'qrpgleref/P115.rpgleinc'

dcl-ds T366 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T366 FROM T366 LIMIT 1;

theCharVar = 'Hello from P406';
dsply theCharVar;
P388();
P1();
P115();
return;