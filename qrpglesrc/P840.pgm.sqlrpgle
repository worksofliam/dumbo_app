**free

ctl-opt dftactgrp(*no);

dcl-pi P840;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P434.rpgleinc'
/copy 'qrpgleref/P667.rpgleinc'
/copy 'qrpgleref/P62.rpgleinc'

dcl-ds T429 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T429 FROM T429 LIMIT 1;

theCharVar = 'Hello from P840';
dsply theCharVar;
P434();
P667();
P62();
return;