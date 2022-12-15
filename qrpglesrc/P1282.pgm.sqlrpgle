**free

ctl-opt dftactgrp(*no);

dcl-pi P1282;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1036.rpgleinc'
/copy 'qrpgleref/P1051.rpgleinc'
/copy 'qrpgleref/P803.rpgleinc'

dcl-ds T1191 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1191 FROM T1191 LIMIT 1;

theCharVar = 'Hello from P1282';
dsply theCharVar;
P1036();
P1051();
P803();
return;