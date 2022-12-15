**free

ctl-opt dftactgrp(*no);

dcl-pi P230;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P229.rpgleinc'
/copy 'qrpgleref/P174.rpgleinc'
/copy 'qrpgleref/P62.rpgleinc'

dcl-ds T184 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T184 FROM T184 LIMIT 1;

theCharVar = 'Hello from P230';
dsply theCharVar;
P229();
P174();
P62();
return;