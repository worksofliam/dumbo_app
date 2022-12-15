**free

ctl-opt dftactgrp(*no);

dcl-pi P87;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P69.rpgleinc'
/copy 'qrpgleref/P15.rpgleinc'
/copy 'qrpgleref/P85.rpgleinc'

dcl-ds T1014 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1014 FROM T1014 LIMIT 1;

theCharVar = 'Hello from P87';
dsply theCharVar;
P69();
P15();
P85();
return;