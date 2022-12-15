**free

ctl-opt dftactgrp(*no);

dcl-pi P819;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P686.rpgleinc'
/copy 'qrpgleref/P414.rpgleinc'
/copy 'qrpgleref/P124.rpgleinc'

dcl-ds T367 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T367 FROM T367 LIMIT 1;

theCharVar = 'Hello from P819';
dsply theCharVar;
P686();
P414();
P124();
return;