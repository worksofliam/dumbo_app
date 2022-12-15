**free

ctl-opt dftactgrp(*no);

dcl-pi P121;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P3.rpgleinc'
/copy 'qrpgleref/P79.rpgleinc'
/copy 'qrpgleref/P87.rpgleinc'

dcl-ds T639 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T639 FROM T639 LIMIT 1;

theCharVar = 'Hello from P121';
dsply theCharVar;
P3();
P79();
P87();
return;