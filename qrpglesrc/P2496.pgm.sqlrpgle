**free

ctl-opt dftactgrp(*no);

dcl-pi P2496;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1322.rpgleinc'
/copy 'qrpgleref/P110.rpgleinc'
/copy 'qrpgleref/P1673.rpgleinc'

dcl-ds T326 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T326 FROM T326 LIMIT 1;

theCharVar = 'Hello from P2496';
dsply theCharVar;
P1322();
P110();
P1673();
return;