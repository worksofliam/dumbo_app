**free

ctl-opt dftactgrp(*no);

dcl-pi P807;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P488.rpgleinc'
/copy 'qrpgleref/P200.rpgleinc'
/copy 'qrpgleref/P401.rpgleinc'

dcl-ds T303 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T303 FROM T303 LIMIT 1;

theCharVar = 'Hello from P807';
dsply theCharVar;
P488();
P200();
P401();
return;