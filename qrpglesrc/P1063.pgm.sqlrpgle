**free

ctl-opt dftactgrp(*no);

dcl-pi P1063;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P143.rpgleinc'
/copy 'qrpgleref/P419.rpgleinc'
/copy 'qrpgleref/P302.rpgleinc'

dcl-ds T894 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T894 FROM T894 LIMIT 1;

theCharVar = 'Hello from P1063';
dsply theCharVar;
P143();
P419();
P302();
return;