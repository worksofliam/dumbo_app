**free

ctl-opt dftactgrp(*no);

dcl-pi P4839;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1630.rpgleinc'
/copy 'qrpgleref/P278.rpgleinc'
/copy 'qrpgleref/P3757.rpgleinc'

dcl-ds T1145 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1145 FROM T1145 LIMIT 1;

theCharVar = 'Hello from P4839';
dsply theCharVar;
P1630();
P278();
P3757();
return;