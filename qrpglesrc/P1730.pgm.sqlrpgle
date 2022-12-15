**free

ctl-opt dftactgrp(*no);

dcl-pi P1730;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P510.rpgleinc'
/copy 'qrpgleref/P34.rpgleinc'
/copy 'qrpgleref/P95.rpgleinc'

dcl-ds T331 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T331 FROM T331 LIMIT 1;

theCharVar = 'Hello from P1730';
dsply theCharVar;
P510();
P34();
P95();
return;