**free

ctl-opt dftactgrp(*no);

dcl-pi P552;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P540.rpgleinc'
/copy 'qrpgleref/P331.rpgleinc'
/copy 'qrpgleref/P15.rpgleinc'

dcl-ds T351 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T351 FROM T351 LIMIT 1;

theCharVar = 'Hello from P552';
dsply theCharVar;
P540();
P331();
P15();
return;