**free

ctl-opt dftactgrp(*no);

dcl-pi P2035;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2012.rpgleinc'
/copy 'qrpgleref/P434.rpgleinc'
/copy 'qrpgleref/P1963.rpgleinc'

dcl-ds T659 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T659 FROM T659 LIMIT 1;

theCharVar = 'Hello from P2035';
dsply theCharVar;
P2012();
P434();
P1963();
return;