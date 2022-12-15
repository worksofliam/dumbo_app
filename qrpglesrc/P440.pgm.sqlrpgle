**free

ctl-opt dftactgrp(*no);

dcl-pi P440;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P150.rpgleinc'
/copy 'qrpgleref/P385.rpgleinc'
/copy 'qrpgleref/P380.rpgleinc'

dcl-ds T184 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T184 FROM T184 LIMIT 1;

theCharVar = 'Hello from P440';
dsply theCharVar;
P150();
P385();
P380();
return;