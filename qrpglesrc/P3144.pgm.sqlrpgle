**free

ctl-opt dftactgrp(*no);

dcl-pi P3144;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2916.rpgleinc'
/copy 'qrpgleref/P2264.rpgleinc'
/copy 'qrpgleref/P3129.rpgleinc'

dcl-ds T1837 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1837 FROM T1837 LIMIT 1;

theCharVar = 'Hello from P3144';
dsply theCharVar;
P2916();
P2264();
P3129();
return;