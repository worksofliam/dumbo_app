**free

ctl-opt dftactgrp(*no);

dcl-pi P107;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P41.rpgleinc'
/copy 'qrpgleref/P67.rpgleinc'
/copy 'qrpgleref/P92.rpgleinc'

dcl-ds T350 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T350 FROM T350 LIMIT 1;

theCharVar = 'Hello from P107';
dsply theCharVar;
P41();
P67();
P92();
return;