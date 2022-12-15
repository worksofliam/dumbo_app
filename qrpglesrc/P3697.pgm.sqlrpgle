**free

ctl-opt dftactgrp(*no);

dcl-pi P3697;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2506.rpgleinc'
/copy 'qrpgleref/P2052.rpgleinc'
/copy 'qrpgleref/P1770.rpgleinc'

dcl-ds T1223 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1223 FROM T1223 LIMIT 1;

theCharVar = 'Hello from P3697';
dsply theCharVar;
P2506();
P2052();
P1770();
return;