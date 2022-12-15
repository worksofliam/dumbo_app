**free

ctl-opt dftactgrp(*no);

dcl-pi P664;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P524.rpgleinc'
/copy 'qrpgleref/P428.rpgleinc'
/copy 'qrpgleref/P440.rpgleinc'

dcl-ds T466 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T466 FROM T466 LIMIT 1;

theCharVar = 'Hello from P664';
dsply theCharVar;
P524();
P428();
P440();
return;