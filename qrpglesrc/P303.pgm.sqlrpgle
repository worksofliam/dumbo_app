**free

ctl-opt dftactgrp(*no);

dcl-pi P303;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P206.rpgleinc'
/copy 'qrpgleref/P236.rpgleinc'
/copy 'qrpgleref/P114.rpgleinc'

dcl-ds T673 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T673 FROM T673 LIMIT 1;

theCharVar = 'Hello from P303';
dsply theCharVar;
P206();
P236();
P114();
return;