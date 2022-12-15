**free

ctl-opt dftactgrp(*no);

dcl-pi P3070;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1166.rpgleinc'
/copy 'qrpgleref/P6.rpgleinc'
/copy 'qrpgleref/P1322.rpgleinc'

dcl-ds T517 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T517 FROM T517 LIMIT 1;

theCharVar = 'Hello from P3070';
dsply theCharVar;
P1166();
P6();
P1322();
return;