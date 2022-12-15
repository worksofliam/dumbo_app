**free

ctl-opt dftactgrp(*no);

dcl-pi P5256;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P4424.rpgleinc'
/copy 'qrpgleref/P3269.rpgleinc'
/copy 'qrpgleref/P973.rpgleinc'

dcl-ds T162 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T162 FROM T162 LIMIT 1;

theCharVar = 'Hello from P5256';
dsply theCharVar;
P4424();
P3269();
P973();
return;